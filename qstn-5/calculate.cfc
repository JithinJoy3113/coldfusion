<cfcomponent>
    <cffunction  name = "ageCalculate" returnType = "struct">

        <cfargument  name = "value1"  required = "true" default="">
        <cfargument  name = "value2"  required = "true" default="">
        
        <cfset local.motherDob = dateFormat(arguments.value2)>
        <cfset local.userDob = dateFormat(arguments.value1)>   
        <cfset local.currentDate = dateFormat(now())>
        <cfset local.motherBday = day(local.motherDob)>
        <cfset local.motherBmonth = month(local.motherDob)>
        <cfset local.userBday = day(local.userDob)>
        <cfset local.userBmonth = month(local.userDob)>
        <cfset local.currentYear = year(now())>
        <cfset local.usersBorn = dateFormat(createDate(local.currentYear, local.userBmonth, local.userBday))>
        <cfset local.mothersBorn = dateFormat(createDate(local.currentYear, local.motherBmonth, local.motherBday))>
        <cfset local.motherYear = year(local.motherDob)>

        <cfif dateCompare(local.mothersBorn,local.currentDate) LT 0>
            <cfset local.mothersBorn = dateFormat(createDate(local.currentYear+1, local.motherBmonth, local.motherBday))>
        <cfelseif dateCompare(local.mothersBorn,local.currentDate) EQ 0>
            <cfset local.mothersBorn = "Today is birthday">
        </cfif>  

        <cfif dateCompare(local.usersBorn,local.currentDate) LT 0>
            <cfset local.usersBorn = dateFormat(createDate(local.currentYear+1, local.userBmonth, local.userBday))>
        <cfelseif dateCompare(local.usersBorn,local.currentDate) EQ 0>
            <cfset local.usersBorn = "Today is birthday">
        </cfif> 

        <cfset local.result = structNew()>    
        <cfset local.result['Age of User'] = dateDiff("yyyy", local.userDob,local.currentDate)>
        <cfset local.result['Mother Age when she delivered him'] = year(userDob) - motherYear>
        <cfset local.result['Days remaining mothers Bday'] = dateDiff("d",local.currentDate,local.mothersBorn)>    
        <cfset local.result['Days remaining users Bday'] = dateDiff("d",local.currentDate,local.usersBorn)> 

        <cfreturn local.result>
    </cffunction>
</cfcomponent>