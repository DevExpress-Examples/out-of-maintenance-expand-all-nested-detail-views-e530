<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E530)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebApplication79/Default.aspx) (VB: [Default.aspx](./VB/WebApplication79/Default.aspx))
* [Default.aspx.cs](./CS/WebApplication79/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebApplication79/Default.aspx.vb))
<!-- default file list end -->
# Expand all nested detail views
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e530/)**
<!-- run online end -->


<p>To expand all the nested detail grids, define a session variable. When the expand action is activated, set it to True, and handle the detail grid's DataBound event. In the event handler check if this variable is set to True, and expand this grid's details using the ASPxGridView.DetailRows.ExpandAllRows method. In the Page.Load event handler, set this variable to False to prevent automatic detail expanding on the next callback or postback.</p>

<br/>


