<cfcomponent output="false" displayname="cookieMonster">
	<cffunction name="init">
		<cfreturn this />
	</cffunction>


	<cffunction name="setCookie">
		<cfargument name="name" type="string" required="true" />
		<cfargument name="value" type="any" required="true" />
		<cfargument name="expires" type="any" required="false" default="never" />

		<cfcookie name="#trim(ARGUMENTS.name)#" value="#trim(ARGUMENTS.value)#" expires="#ARGUMENTS.expires#" />
	</cffunction>


	<cffunction name="deleteCookie">
		<cfargument name="name" type="string" required="true" />
		<cfif this.doesExists(ARGUMENTS.name)>
			<cfcookie name="#trim(ARGUMENTS.name)#" expires="now" />
		</cfif>
	</cffunction>


	<cffunction name="getValue">
		<cfargument name="name" type="string" required="true" />
		<cfif this.doesExists(ARGUMENTS.name)>
			<cfreturn COOKIE[trim(ARGUMENTS.name)] />
		<cfelse>
			<cfreturn javaCast("null","") />
		</cfif>
	</cffunction>


	<cffunction name="doesExists" returntype="boolean">
		<cfargument name="name" type="string" required="true" />
		<cfreturn (structKeyExists(COOKIE,trim(ARGUMENTS.name))) />
	</cffunction>
</cfcomponent>
