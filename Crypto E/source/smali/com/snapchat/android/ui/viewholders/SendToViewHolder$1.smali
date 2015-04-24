.class Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->a(Lcom/snapchat/android/fragments/sendto/SendToItem;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

.field final synthetic b:Lcom/snapchat/android/fragments/sendto/SendToItem;

.field final synthetic c:Lcom/snapchat/android/ui/viewholders/SendToViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/viewholders/SendToViewHolder;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;Lcom/snapchat/android/fragments/sendto/SendToItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;->c:Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;->a:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

    iput-object p3, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;->b:Lcom/snapchat/android/fragments/sendto/SendToItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;->a:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

    iget-object v1, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;->b:Lcom/snapchat/android/fragments/sendto/SendToItem;

    invoke-interface {v0, v1, p2}, Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;->a(Lcom/snapchat/android/fragments/sendto/SendToItem;Z)V

    .line 70
    return-void
.end method
