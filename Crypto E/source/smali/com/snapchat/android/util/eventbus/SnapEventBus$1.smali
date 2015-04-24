.class Lcom/snapchat/android/util/eventbus/SnapEventBus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/eventbus/SnapEventBus;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/snapchat/android/util/eventbus/SnapEventBus;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/eventbus/SnapEventBus;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus$1;->b:Lcom/snapchat/android/util/eventbus/SnapEventBus;

    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
