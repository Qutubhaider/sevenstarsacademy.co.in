<%@ Control Language="C#" AutoEventWireup="true" CodeFile="homecontact.ascx.cs" Inherits="control_homecontact" %>
<div class="col-md-5">
    <h2 class="section-title">Get In Touch with us</h2>
    <div class="apply-form">
        <h4>Please Fill Up The Form</h4>
        <p>we are happy to assist you</p>
        <p>
            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Name :"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regName" runat="server"
                ControlToValidate="txt_name"
                ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                Text="Enter a valid name" style="position: absolute;margin-top: -24px;font-size: 10px;" />
        <p>
            <asp:TextBox ID="txt_phone" runat="server" CssClass="form-control" placeholder="Phone :"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="txt_phone" ErrorMessage="Invalid Phone Number"
                ValidationExpression="[0-9]{10}" style="position: absolute;margin-top: -24px;font-size: 10px;"></asp:RegularExpressionValidator>
        <p>
            <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Email :"></asp:TextBox>
            <asp:RegularExpressionValidator style="position: absolute;margin-top: -24px;font-size: 10px;" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <p>
            <asp:TextBox ID="txt_messages" TextMode="MultiLine" runat="server" CssClass="form-control" placeholder="Message :"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btn_send" Text="Send" runat="server" OnClick="btn_send_Click" />
    </div>
</div>
