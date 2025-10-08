<%@ taglib prefix="s" uri="/struts-tags" %>
<html><head><meta charset="UTF-8"><title>Items</title></head>
<body>
<h1>Items</h1>
<p><a href="item-create">Add New Item</a></p>

<s:if test="items != null && items.size() > 0">
  <table border="1" cellpadding="6">
    <tr><th>ID</th><th>Title</th><th>Description</th><th>Actions</th></tr>
    <s:iterator value="items" var="i">
      <tr>
        <td><s:property value="#i.id"/></td>
        <td><s:property value="#i.title"/></td>
        <td><s:property value="#i.description"/></td>
        <td>
          <a href="item-edit?id=<s:property value='#i.id'/>">Edit</a> |
          <a href="item-delete?id=<s:property value='#i.id'/>" onclick="return confirm('Delete?')">Delete</a>
        </td>
      </tr>
    </s:iterator>
  </table>
</s:if>
<s:else><p>No items yet.</p></s:else>
</body></html>
