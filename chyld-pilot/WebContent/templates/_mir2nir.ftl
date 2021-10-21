<#-- this template is passed a variable calle mir.  the returning template must
contain a new URI representing the associated NIR.
Note that freemarker comments, like this one, are not serialized -->
${mir?replace("http://info.geoconnex.us/chyld-pilot/info/","https://geoconnex.us/chyld-pilot/id/")}
<#-- using https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_replace
WARNING, demonstration purpose, this is not safe as it assumes /info/ appears only once
WARNING, it also has no clue about persistent URO in debug mode, etc..-->
