<%@ Page Title="New Task" Language="C#" MasterPageFile="~/FrontEnd.Master" CodeBehind="Insert.aspx.cs" Inherits="COMP2007Assignment2.Planners.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="COMP2007Assignment2.Models.Planner" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>New Task:</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="CourseName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TaskName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TaskDetails" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DueDate" runat="server" />

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
