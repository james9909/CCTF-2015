.class Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/dev/DbBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawerListAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/dev/DbBrowserActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/dev/DbBrowserActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    iput-object p1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->a:Lcom/snapchat/android/dev/DbBrowserActivity;

    .line 273
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 274
    iput p3, p0, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->b:I

    .line 275
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    if-nez p2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->a:Lcom/snapchat/android/dev/DbBrowserActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 280
    iget v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 284
    const v0, 0x7f0a0175

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    instance-of v2, v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    if-eqz v2, :cond_2

    .line 286
    check-cast v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 287
    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_1
    :goto_0
    return-object p2

    .line 288
    :cond_2
    instance-of v2, v1, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    if-eqz v2, :cond_1

    .line 289
    check-cast v1, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 290
    invoke-virtual {v1}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
