<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Blog.Post>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Title
            </th>
            <th>
                Published On
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new {  id=item.KeyValue()  }) %> |
                <%= Html.ActionLink("Details", "Details", new { id = item.KeyValue() })%>
            </td>
            <td>
                <%= Html.Encode(item.Title) %>
            </td>

            <td>
                <%= Html.Encode(String.Format("{0:g}", item.PublishedOn)) %>
            </td>

        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

