.class public Lcom/snapchat/android/util/eventbus/AdvanceSnapEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/model/Snap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Snap;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/AdvanceSnapEvent;->a:Lcom/snapchat/android/model/Snap;

    .line 12
    return-void
.end method
