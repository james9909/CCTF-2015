.class Lcom/snapchat/android/ui/TakeSnapButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/TakeSnapButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/TakeSnapButton;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/TakeSnapButton;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/snapchat/android/ui/TakeSnapButton$1;->a:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/TakeSnapButton$1;->a:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TakeSnapButton;->invalidate()V

    .line 130
    return-void
.end method
