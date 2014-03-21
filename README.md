cookieMonster
=============

a ColdFusion Component to work with Cookies in CFScript

Usage
-----
```cfc
<cfscript>
  var cookieMonster = new cookieMonster();
  
  cookieMonster.setCookie("Foo","Bar"); // Sets a Cookie named "Foo" to the value "Bar"
  
  if (cookieMonster.doesExists("Foo")) { // checks for the existance of a Cookie named Foo
    var _foo = cookieMonster.getValue("Foo"); // Sets local variable "_foo" to the value of "Bar"
    cookieMonster.deleteCookie("Foo"); // Expires the Cookie "Foo" immediately
  }
</cfscript>
```

