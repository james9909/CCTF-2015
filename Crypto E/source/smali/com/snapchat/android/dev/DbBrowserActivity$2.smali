.class Lcom/snapchat/android/dev/DbBrowserActivity$2;
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
    .line 78
    iput-object p1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$2;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    iput-object p2, p0, Lcom/snapchat/android/dev/DbBrowserActivity$2;->a:Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

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
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$2;->a:Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

    invoke-virtual {v0, p3}, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 84
    instance-of v1, v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 86
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$2;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-static {v1, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$2;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->b()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$2;->b:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-static {v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->b(Lcom/snapchat/android/dev/DbBrowserActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 91
    return-void
.end method
