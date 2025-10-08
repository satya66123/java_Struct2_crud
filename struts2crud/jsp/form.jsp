<%@ taglib prefix="s" uri="/struts-tags" %>
<html><head><meta charset="UTF-8"><title>Item Form</title></head>
<body>
<h1><s:if test="id==0">Create Item</s:if><s:else>Edit Item</s:else></h1>

<s:form action="%{id==0 ? 'item-save' : 'item-update'}" method="post">
  <s:hidden name="id"/>
  <label>Title</label><s:textfield name="title" required="true"/><br/>
  <label>Description</label><s:textarea name="description" cols="50" rows="5"/><br/>
  <s:submit value="Save"/>
  <a href="items">Cancel</a>
</s:form>
</body></html>
