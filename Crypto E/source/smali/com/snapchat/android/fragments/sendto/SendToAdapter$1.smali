.class Lcom/snapchat/android/fragments/sendto/SendToAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

.field final synthetic b:Lcom/snapchat/android/fragments/sendto/SendToAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToAdapter;Lcom/snapchat/android/ui/viewholders/SendToViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter$1;->b:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter$1;->a:Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter$1;->a:Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->u()V

    .line 124
    return-void
.end method
