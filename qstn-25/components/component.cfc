<cfcomponent>
    <cffunction  name="fileString" returnType="any">
        <cfargument  name="string">
        <cfset local.result = structNew()>
        <cfset local.newList = "">
        <cfset local.charCount = structNew("ordered")>
        <cfloop list="#arguments.string#" item="char" delimiters=" /.">           
            <cfif (NOT listContains(local.newList, char)) AND (NOT IsNumeric(char))  AND (len(char) GTE 3) >
                <cfset local.newList=listAppend(local.newList, char)>           
            </cfif>   
        </cfloop>
<!---         Query --->
       <cfloop list="#local.newList#" item="item">
            <cfquery name="queryCount" datasource="database-jithin">
                select Words from readString where Words='#item#'           
            </cfquery> 
            <cfif (queryCount.Words NEQ item)> 
                <cfquery name="queryiNSERT" datasource="database-jithin">
                    insert into readString(Words) values (<cfqueryparam value='#item#' cfsqltype="cf_sql_varchar">)
                </cfquery>           
            </cfif>           
        </cfloop>
        <cfquery name="queryTable" datasource="database-jithin">
            select Words from readString
        </cfquery>
        <cfset local.result["Table"] = queryTable>       
<!---     Number of occurence and size --->
        <cfset local.charCount = structNew()>
        <cfset local.size = structNew()>
        <cfloop list="#arguments.string#" item="item" delimiters=" /.">
            <cfif NOT IsNumeric(item)  AND len(item) GTE 3>
                <cfif structKeyExists(local.charCount, '#item#')>
                    <cfset local.charCount[item]  += 1>
                    <cfset local.size[item] += 5 >
                <cfelse>
                    <cfset local.charCount[item]  = 1>  
                    <cfset local.size[item]  = 15>    
                </cfif>
            </cfif>
        </cfloop>    
        <cfset local.result['size'] = local.size>
<!---         Sort by value ---> 
        <cfset local.structOrder=StructSort(local.charCount,"Numeric","desc")>
        <cfset local.valueOrder = structNew("ordered")>
        <cfloop array="#local.structOrder#" item="word">
            <cfset local.valueOrder[word] = local.charCount[word]>
        </cfloop>
         <cfset local.result['Sort by value'] = local.valueOrder>
<!---          Sort by Character Length --->
        <cfset local.arrayLength = arrayLen(local.structOrder)>
        <cfloop index="i" from="1" to="#local.arrayLength#">
            <cfloop index="J" from="#i+1#" to="#local.arrayLength#">
                <cfif len(local.structOrder[i]) LT len(local.structOrder[j])>
                    <cfset local.temp = local.structOrder[i]>
                    <cfset local.structOrder[i] = local.structOrder[j]>
                    <cfset local.structOrder[j] = local.temp>
                </cfif>
            </cfloop>
        </cfloop>
        <cfset local.keySort = structNew("ordered")>
        <cfloop array="#local.structOrder#" item="word">
            <cfset local.keySort[word] = local.charCount[word]>
        </cfloop>
        <cfset local.result['Sort by Character Length'] = local.keySort>
<!---         sort by alphabetic --->    
        <cfset local.alphabetOrder = StructToSorted(keySort,"text","asc",false)>
        <cfset local.result['Sort by Alphabet Order'] = local.alphabetOrder>
        <cfreturn local.result>

    </cffunction>
</cfcomponent>