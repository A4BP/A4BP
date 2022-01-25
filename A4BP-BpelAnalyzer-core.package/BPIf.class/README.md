A BPIf class is xxxxxxxxx.


if :- Provides a construct to choose one activity among a collection of activities.

<if> 
<condition expressionLanguage="anyURI"?>bool-expr</condition> 
	activity 
<elseif>* 
	<condition expressionLanguage="anyURI"?>bool-expr</condition> 
	activity 
</elseif> 
<else>? 
	activity 
</else> 
</if>