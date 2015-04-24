.class Lcom/snapchat/android/ui/SwipeController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SwipeController;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/ui/SwipeController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SwipeController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeController$1;->b:Lcom/snapchat/android/ui/SwipeController;

    iput p2, p0, Lcom/snapchat/android/ui/SwipeController$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController$1;->b:Lcom/snapchat/android/ui/SwipeController;

    iget v1, p0, Lcom/snapchat/android/ui/SwipeController$1;->a:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeController;->a(I)V

    .line 67
    return-void
.end method
