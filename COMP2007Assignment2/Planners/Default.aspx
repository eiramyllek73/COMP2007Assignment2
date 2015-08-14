<%@ Page Title="StudentGenius!" Language="C#" MasterPageFile="~/FrontEnd.Master" CodeBehind="Default.aspx.cs" Inherits="COMP2007Assignment2.Planners.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
	<h2>Task List for <asp:LoginName ID="LoginName1" runat="server" />:</h2>
	<p>
		<asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new Task" />
	</p>
	<div>
		<asp:ListView id="ListView1" runat="server"
			DataKeyNames="Id" 
			ItemType="COMP2007Assignment2.Models.Planner"
			SelectMethod="GetData">
			<EmptyDataTemplate>
				You have no tasks recorded at this time!
			</EmptyDataTemplate>
			<LayoutTemplate>
				<table class="table">
					<thead>
						<tr>
							<th>
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
							<th>
								<asp:LinkButton Text="Name of Course:" CommandName="Sort" CommandArgument="CourseName" runat="Server" />
							</th>
							<th>
								<asp:LinkButton Text="Name/Type of Task:" CommandName="Sort" CommandArgument="TaskName" runat="Server" />
							</th>
							<th>
								<asp:LinkButton Text="Details (if any):" CommandName="Sort" CommandArgument="TaskDetails" runat="Server" />
							</th>
							<th>
								<asp:LinkButton Text="Date Due:" CommandName="Sort" CommandArgument="DueDate" runat="Server" />		
							</th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<tr runat="server" id="itemPlaceholder" />
					</tbody>
				</table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
						<asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
						<asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
						<asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
					</Fields>
				</asp:DataPager>
			</LayoutTemplate>
			<ItemTemplate>
				<tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CourseName" ID="CourseName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TaskName" ID="TaskName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TaskDetails" ID="TaskDetails" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DueDate" ID="DueDate" Mode="ReadOnly" />
							</td>
					<td>
						<asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Planners/Details", Item.Id) %>' Text="Details" /> | 
						<asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Planners/Edit", Item.Id) %>' Text="Edit" /> | 
						<asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Planners/Delete", Item.Id) %>' Text="Delete" />
					</td>
				</tr>
			</ItemTemplate>
		</asp:ListView>
	</div>
</asp:Content>

