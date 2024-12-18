<cfcomponent>
    <cffunction  name = "dateMonth" returnType = "struct">
    
        <cfset local.dayColours = {"Sunday":"red",
                "Monday" : "green", 
                "Tuesday" : "orange", 
                "Wednesday" : "yellow", 
                "Thursday" : "black", 
                "Friday" : "blue", 
                "Saturday" : "darkred"
                }>

        <cfset local.obj = structNew("ordered")>  
        <cfset local.lastFive = structNew("ordered")>
        <cfset local.currentDate = dateFormat(now())>
        <cfset local.currentMonth = month(local.currentDate)>
        <cfset local.currentMonthWords = monthAsString(local.currentMonth)>
        <cfset local.todaydayOfWeek = dayOfWeek(local.currentDate)>
        <cfset local.friday = (6-local.todaydayOfWeek)-7> 
        <cfset local.lastFriday = dateFormat(dateAdd("d", local.friday, local.currentDate))>
        <cfset local.obj['Current Date'] = local.currentDate>
        <cfset local.obj['Current Month'] = local.currentMonth>
        <cfset local.obj['Current Month(words)'] = local.currentMonthWords>
        <cfset local.obj['Last Friday'] = local.lastFriday>
        <cfset local.lastDay = daysInMonth(local.currentDate)>
        <cfset local.lastDay= dateFormat(createDate(year(currentDate), local.currentMonth, local.lastDay))>
        <cfset local.obj['Last Day of Month'] = local.lastDay>

        <cfloop from = "-1" to = "-5" step = "-1" index = "i">
            <cfset local.date = dateFormat(dateAdd("d", i, now()))>
            <cfset local.color = dateFormat(local.date,"dddd")>
            <cfloop collection = "#local.dayColours#" item = "col">
                 <cfif local.color EQ col>  
                    <cfset local.lastFive["#local.date#-#local.color#"] = local.dayColours[col]>
                 </cfif>           
            </cfloop>       
        </cfloop>

        <cfset local.obj['Day Color'] = #local.lastFive#>
        <cfreturn local.obj>
    </cffunction>
</cfcomponent>





















 
 
   
     