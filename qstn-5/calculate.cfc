<cfcomponent>
    <cffunction  name="ageCalculate">
        <cfargument  name="val1">
        <cfargument  name="val2">
        <cfset local.motherDob = dateFormat(arguments.val2)>
        <cfset local.userDob = dateFormat(arguments.val1)>   
        <cfset local.currentDate = dateFormat(now())>
        <cfset local.motherBday=day(local.motherDob)>
        <cfset local.motherBmonth = month(local.motherDob)>
        <cfset local.userBday=day(local.userDob)>
        <cfset local.userBmonth = month(local.userDob)>
        <cfset local.currentYear = year(now())>
        <cfset local.usersBorn = dateFormat(createDate(local.currentYear, local.userBmonth, local.userBday))>
        <cfset local.mothersBorn = dateFormat(createDate(local.currentYear, local.motherBmonth, local.motherBday))>
        <cfset local.motherYear = year(local.motherDob)>
        <cfif dateCompare(local.mothersBorn,local.currentYear) LT 0>
            <cfset local.mothersBorn = dateFormat(createDate(local.currentYear+1, local.motherBmonth, local.motherBday))>
        </cfif>      
        <cfif dateCompare(local.usersBorn,local.currentYear) LT 0>
            <cfset local.usersBorn = dateFormat(createDate(local.currentYear+1, local.userBmonth, local.userBday))>
        </cfif>      
        <cfset local.result = structNew()>     
        <cfset local.result['Age of User'] = dateDiff("yyyy", local.userDob,local.currentDate)>
        <cfset local.result['Mother Age']=year(userDob)-motherYear>
        <cfset local.result['Days remaining mothers Bday'] = dateDiff("d",local.mothersBorn,local.currentDate)>    
        <cfset local.result['Days remaining users Bday'] = dateDiff("d",local.usersBorn,local.currentDate)>  
        <cfreturn local.result>
    </cffunction>
</cfcomponent>