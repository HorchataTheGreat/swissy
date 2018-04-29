[Uno.Compiler.UxGenerated]
public partial class EditPlayerPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb0"
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
        var temp = new global::Fuse.Controls.TextBox();
        temp_Value_inst = new swissy_FuseControlsTextInputControl_Value_Property(temp, __selector0);
        var temp2 = new global::Fuse.Reactive.Data("name");
        var temp1 = new global::Fuse.Controls.TextBox();
        temp1_Value_inst = new swissy_FuseControlsTextInputControl_Value_Property(temp1, __selector0);
        var temp3 = new global::Fuse.Reactive.Data("deckType");
        var temp4 = new global::Fuse.Reactive.Data("goBack");
        var temp5 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp6 = new global::Fuse.Controls.ScrollView();
        var temp7 = new global::Fuse.Controls.StackPanel();
        var temp8 = new global::Fuse.Controls.Text();
        var temp9 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp2, Fuse.Reactive.BindingMode.Default);
        var temp10 = new global::Fuse.Controls.Text();
        var temp11 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp3, Fuse.Reactive.BindingMode.Default);
        var temp12 = new global::Fuse.Controls.Button();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp4);
        temp5.LineNumber = 4;
        temp5.FileName = "Pages/EditPlayerPage.ux";
        temp5.File = new global::Uno.UX.BundleFileSource(import("../../../Pages/EditPlayerPage.js"));
        temp6.Children.Add(temp7);
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp);
        temp7.Children.Add(temp10);
        temp7.Children.Add(temp1);
        temp7.Children.Add(temp12);
        temp8.Value = "Name:";
        temp.Bindings.Add(temp9);
        temp10.Value = "Deck:";
        temp1.Bindings.Add(temp11);
        temp12.Text = "Back";
        global::Fuse.Gestures.Clicked.AddHandler(temp12, temp_eb0.OnEvent);
        temp12.Bindings.Add(temp_eb0);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb0);
        this.Children.Add(temp5);
        this.Children.Add(temp6);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
}
