# Expand all nested detail views


<p>To expand all the nested detail grids, define a session variable. When the expand action is activated, set it to True, and handle the detail grid's DataBound event. In the event handler check if this variable is set to True, and expand this grid's details using the ASPxGridView.DetailRows.ExpandAllRows method. In the Page.Load event handler, set this variable to False to prevent automatic detail expanding on the next callback or postback.</p>

<br/>


