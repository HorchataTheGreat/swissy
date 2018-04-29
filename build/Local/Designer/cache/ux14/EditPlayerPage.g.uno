[Uno.Compiler.UxGenerated]
public partial class EditPlayerPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<string> temp_Text_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<string> temp2_Value_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb2",
        "temp_eb3"
    };
    static EditPlayerPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public EditPlayerPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp3 = "Editing ";
        var temp4 = new global::Fuse.Reactive.Constant(temp3);
        var temp5 = new global::Fuse.Reactive.Data("name");
        var temp = new global::swissy.TitleBar();
        temp_Text_inst = new swissy_swissyTitleBar_Text_Property(temp, __selector0);
        var temp6 = new global::Fuse.Reactive.Add(temp4, temp5);
        var temp1 = new global::Fuse.Controls.TextBox();
        temp1_Value_inst = new swissy_FuseControlsTextInputControl_Value_Property(temp1, __selector1);
        var temp7 = new global::Fuse.Reactive.Data("name");
        var temp2 = new global::Fuse.Controls.TextBox();
        temp2_Value_inst = new swissy_FuseControlsTextInputControl_Value_Property(temp2, __selector1);
        var temp8 = new global::Fuse.Reactive.Data("deckType");
        var temp9 = new global::Fuse.Reactive.Data("cancel");
        var temp10 = new global::Fuse.Reactive.Data("save");
        var temp11 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp12 = new global::Fuse.Controls.DockPanel();
        var temp13 = new global::Fuse.Reactive.DataBinding(temp_Text_inst, temp6, Fuse.Reactive.BindingMode.Default);
        var temp14 = new global::Fuse.Controls.StackPanel();
        var temp15 = new global::Spacer();
        var temp16 = new global::Fuse.Controls.Grid();
        var temp17 = new global::swissy.Subtitle();
        var temp18 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp7, Fuse.Reactive.BindingMode.Default);
        var temp19 = new global::Fuse.Controls.Grid();
        var temp20 = new global::swissy.Subtitle();
        var temp21 = new global::Fuse.Reactive.DataBinding(temp2_Value_inst, temp8, Fuse.Reactive.BindingMode.Default);
        var temp22 = new global::Spacer();
        var temp23 = new global::Fuse.Controls.Grid();
        var temp24 = new global::swissy.Button();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp9);
        var temp25 = new global::swissy.Button();
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp10);
        temp11.LineNumber = 4;
        temp11.FileName = "Pages/EditPlayerPage.ux";
        temp11.File = new global::Uno.UX.BundleFileSource(import("../../../../../Pages/EditPlayerPage.js"));
        temp12.Children.Add(temp);
        temp12.Children.Add(temp14);
        temp.Bindings.Add(temp13);
        temp14.Children.Add(temp15);
        temp14.Children.Add(temp16);
        temp14.Children.Add(temp19);
        temp14.Children.Add(temp22);
        temp14.Children.Add(temp23);
        temp16.Columns = "1*,3*";
        temp16.Children.Add(temp17);
        temp16.Children.Add(temp1);
        temp17.textValue = "Name:";
        temp1.TextColor = Fuse.Drawing.Colors.White;
        temp1.CaretColor = Fuse.Drawing.Colors.White;
        temp1.Margin = float4(5f, 5f, 5f, 5f);
        temp1.Bindings.Add(temp18);
        temp19.Columns = "1*,3*";
        temp19.Children.Add(temp20);
        temp19.Children.Add(temp2);
        temp20.textValue = "Deck:";
        temp2.TextColor = Fuse.Drawing.Colors.White;
        temp2.CaretColor = Fuse.Drawing.Colors.White;
        temp2.Margin = float4(5f, 5f, 5f, 5f);
        temp2.Bindings.Add(temp21);
        temp23.Columns = "1*,1*";
        temp23.Children.Add(temp24);
        temp23.Children.Add(temp25);
        temp24.changeColor = float4(0.06666667f, 0.06666667f, 0.06666667f, 1f);
        temp24.Text = "Cancel";
        global::Fuse.Gestures.Clicked.AddHandler(temp24, temp_eb2.OnEvent);
        temp24.Bindings.Add(temp_eb2);
        temp25.Text = "Save";
        global::Fuse.Gestures.Clicked.AddHandler(temp25, temp_eb3.OnEvent);
        temp25.Bindings.Add(temp_eb3);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb2);
        __g_nametable.Objects.Add(temp_eb3);
        this.Children.Add(temp11);
        this.Children.Add(temp12);
    }
    static global::Uno.UX.Selector __selector0 = "Text";
    static global::Uno.UX.Selector __selector1 = "Value";
}
