.class public Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;->a:I

    .line 11
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;->b:Landroid/view/KeyEvent;

    .line 12
    return-void
.end method
