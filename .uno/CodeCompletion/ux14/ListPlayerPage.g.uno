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
        global::Uno.UX.Property<string> __self_Text_inst;
        internal global::Fuse.Reactive.EventBinding temp_eb1;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Button();
            __self_Text_inst = new swissy_FuseControlsButtonBase_Text_Property(__self, __selector0);
            var temp = new global::Fuse.Reactive.Data("name");
            var temp1 = new global::Fuse.Reactive.Data("goToPlayer");
            var temp2 = new global::Fuse.Reactive.DataBinding(__self_Text_inst, temp, Fuse.Reactive.BindingMode.Default);
            temp_eb1 = new global::Fuse.Reactive.EventBinding(temp1);
            global::Fuse.Gestures.Clicked.AddHandler(__self, temp_eb1.OnEvent);
            __self.Bindings.Add(temp2);
            __self.Bindings.Add(temp_eb1);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Text";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb2"
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
        var temp2 = new global::Fuse.Reactive.Data("addPlayer");
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.ScrollView();
        var temp5 = new global::Fuse.Controls.StackPanel();
        var temp6 = new Template(this, this);
        var temp7 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp1, Fuse.Reactive.BindingMode.Default);
        var temp8 = new global::Fuse.Controls.Button();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp2);
        temp3.LineNumber = 4;
        temp3.FileName = "Pages/ListPlayerPage.ux";
        temp3.File = new global::Uno.UX.BundleFileSource(import("../../../Pages/ListPlayerPage.js"));
        temp4.Children.Add(temp5);
        temp5.Children.Add(temp);
        temp5.Children.Add(temp8);
        temp.Templates.Add(temp6);
        temp.Bindings.Add(temp7);
        temp8.Text = "Add";
        global::Fuse.Gestures.Clicked.AddHandler(temp8, temp_eb2.OnEvent);
        temp8.Bindings.Add(temp_eb2);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb2);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
}
