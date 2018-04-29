[Uno.Compiler.UxGenerated]
public partial class AddPlayerPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb0",
        "temp_eb1"
    };
    static AddPlayerPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public AddPlayerPage(
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
        var temp4 = new global::Fuse.Reactive.Data("cancel");
        var temp5 = new global::Fuse.Reactive.Data("doInsertPlayer");
        var temp6 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp7 = new global::Fuse.Controls.DockPanel();
        var temp8 = new global::swissy.TitleBar();
        var temp9 = new global::Fuse.Controls.StackPanel();
        var temp10 = new global::Spacer();
        var temp11 = new global::Fuse.Controls.Grid();
        var temp12 = new global::swissy.Subtitle();
        var temp13 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp2, Fuse.Reactive.BindingMode.Default);
        var temp14 = new global::Fuse.Controls.Grid();
        var temp15 = new global::swissy.Subtitle();
        var temp16 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp3, Fuse.Reactive.BindingMode.Default);
        var temp17 = new global::Spacer();
        var temp18 = new global::Fuse.Controls.Grid();
        var temp19 = new global::swissy.Button();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp4);
        var temp20 = new global::swissy.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp5);
        temp6.LineNumber = 4;
        temp6.FileName = "Pages/AddPlayerPage.ux";
        temp6.File = new global::Uno.UX.BundleFileSource(import("../../../../../Pages/AddPlayerPage.js"));
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp9);
        temp8.Text = "Add Player";
        temp9.Children.Add(temp10);
        temp9.Children.Add(temp11);
        temp9.Children.Add(temp14);
        temp9.Children.Add(temp17);
        temp9.Children.Add(temp18);
        temp11.Columns = "1*,3*";
        temp11.Children.Add(temp12);
        temp11.Children.Add(temp);
        temp12.textValue = "Name:";
        temp.TextColor = Fuse.Drawing.Colors.White;
        temp.CaretColor = Fuse.Drawing.Colors.White;
        temp.Margin = float4(5f, 5f, 5f, 5f);
        temp.Bindings.Add(temp13);
        temp14.Columns = "1*,3*";
        temp14.Children.Add(temp15);
        temp14.Children.Add(temp1);
        temp15.textValue = "Deck:";
        temp1.TextColor = Fuse.Drawing.Colors.White;
        temp1.CaretColor = Fuse.Drawing.Colors.White;
        temp1.Margin = float4(5f, 5f, 5f, 5f);
        temp1.Bindings.Add(temp16);
        temp18.Columns = "1*,1*";
        temp18.Children.Add(temp19);
        temp18.Children.Add(temp20);
        temp19.changeColor = float4(0.06666667f, 0.06666667f, 0.06666667f, 1f);
        temp19.Text = "Cancel";
        global::Fuse.Gestures.Clicked.AddHandler(temp19, temp_eb0.OnEvent);
        temp19.Bindings.Add(temp_eb0);
        temp20.Text = "Add";
        global::Fuse.Gestures.Clicked.AddHandler(temp20, temp_eb1.OnEvent);
        temp20.Bindings.Add(temp_eb1);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb0);
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp6);
        this.Children.Add(temp7);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
}
