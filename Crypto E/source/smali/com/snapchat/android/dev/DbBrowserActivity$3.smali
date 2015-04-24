.class Lcom/snapchat/android/dev/DbBrowserActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/dev/DbBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

.field final synthetic b:Lcom/snapchat/android/dev/DbBrowserActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$3;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    iput-object p2, p0, Lcom/snapchat/android/dev/DbBrowserActivity$3;->a:Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$3;->a:Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

    invoke-virtual {v0, p3}, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 106
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$3;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-static {v1, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$3;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->b()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$3;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-static {v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->b(Lcom/snapchat/android/dev/DbBrowserActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 111
    return-void
.end method
