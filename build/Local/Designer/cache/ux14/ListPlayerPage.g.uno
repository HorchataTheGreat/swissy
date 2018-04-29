[Uno.Compiler.UxGenerated]
public partial class ListPlayerPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly ListPlayerPage __parent;
        [Uno.WeakReference] internal readonly ListPlayerPage __parentInstance;
        public Template(ListPlayerPage parent, ListPlayerPage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> __self_playerNumber_inst;
        global::Uno.UX.Property<string> __self_playerName_inst;
        global::Uno.UX.Property<string> __self_playerDeckType_inst;
        internal global::Fuse.Reactive.EventBinding temp_eb4;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::swissy.ListItem();
            var temp = new global::Fuse.Reactive.IndexFunction();
            var temp1 = 1;
            var temp2 = new global::Fuse.Reactive.Constant(temp1);
            __self_playerNumber_inst = new swissy_swissyListItem_playerNumber_Property(__self, __selector0);
            var temp3 = new global::Fuse.Reactive.Add(temp, temp2);
            __self_playerName_inst = new swissy_swissyListItem_playerName_Property(__self, __selector1);
            var temp4 = new global::Fuse.Reactive.Data("name");
            __self_playerDeckType_inst = new swissy_swissyListItem_playerDeckType_Property(__self, __selector2);
            var temp5 = new global::Fuse.Reactive.Data("deckType");
            var temp6 = new global::Fuse.Reactive.Data("goToPlayer");
            var temp7 = new global::Fuse.Reactive.DataBinding(__self_playerNumber_inst, temp3, Fuse.Reactive.BindingMode.Default);
            var temp8 = new global::Fuse.Reactive.DataBinding(__self_playerName_inst, temp4, Fuse.Reactive.BindingMode.Default);
            var temp9 = new global::Fuse.Reactive.DataBinding(__self_playerDeckType_inst, temp5, Fuse.Reactive.BindingMode.Default);
            temp_eb4 = new global::Fuse.Reactive.EventBinding(temp6);
            global::Fuse.Gestures.Clicked.AddHandler(__self, temp_eb4.OnEvent);
            __self.Bindings.Add(temp7);
            __self.Bindings.Add(temp8);
            __self.Bindings.Add(temp9);
            __self.Bindings.Add(temp_eb4);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "playerNumber";
        static global::Uno.UX.Selector __selector1 = "playerName";
        static global::Uno.UX.Selector __selector2 = "playerDeckType";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb5;
    internal global::Fuse.Reactive.EventBinding temp_eb6;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb5",
        "temp_eb6"
    };
    static ListPlayerPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ListPlayerPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new swissy_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("players");
        var temp2 = new global::Fuse.Reactive.Data("goToAdd");
        var temp3 = new global::Fuse.Reactive.Data("startTourney");
        var temp4 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp5 = new global::Fuse.Controls.DockPanel();
        var temp6 = new global::swissy.TitleBar();
        var temp7 = new global::swissy.ListItem();
        var temp8 = new global::Fuse.Controls.ScrollView();
        var temp9 = new global::Fuse.Controls.StackPanel();
        var temp10 = new Template(this, this);
        var temp11 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp1, Fuse.Reactive.BindingMode.Default);
        var temp12 = new global::Fuse.Controls.Grid();
        var temp13 = new global::swissy.Button();
        temp_eb5 = new global::Fuse.Reactive.EventBinding(temp2);
        var temp14 = new global::swissy.Button();
        temp_eb6 = new global::Fuse.Reactive.EventBinding(temp3);
        temp4.LineNumber = 4;
        temp4.FileName = "Pages/ListPlayerPage.ux";
        temp4.File = new global::Uno.UX.BundleFileSource(import("../../../../../Pages/ListPlayerPage.js"));
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp7);
        temp5.Children.Add(temp8);
        temp5.Children.Add(temp12);
        temp6.Text = "Tournament Players";
        global::Fuse.Controls.DockPanel.SetDock(temp7, Fuse.Layouts.Dock.Top);
        temp8.Children.Add(temp9);
        temp9.Children.Add(temp);
        temp.Templates.Add(temp10);
        temp.Bindings.Add(temp11);
        temp12.Columns = "1*,1*";
        global::Fuse.Controls.DockPanel.SetDock(temp12, Fuse.Layouts.Dock.Bottom);
        temp12.Children.Add(temp13);
        temp12.Children.Add(temp14);
        temp13.Text = "Add";
        global::Fuse.Gestures.Clicked.AddHandler(temp13, temp_eb5.OnEvent);
        temp13.Bindings.Add(temp_eb5);
        temp14.changeColor = float4(0.2705882f, 0.6941177f, 0.572549f, 1f);
        temp14.Text = "Start";
        global::Fuse.Gestures.Clicked.AddHandler(temp14, temp_eb6.OnEvent);
        temp14.Bindings.Add(temp_eb6);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb5);
        __g_nametable.Objects.Add(temp_eb6);
        this.Children.Add(temp4);
        this.Children.Add(temp5);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
}
