<%@ Page Language="C#"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Mono test</title>
</head>

<body>
<form id="form1" runat="server">
<div>
        Current time: <%= DateTime.UtcNow.ToString() %> UTC</div>
</form>

</body>
</html>