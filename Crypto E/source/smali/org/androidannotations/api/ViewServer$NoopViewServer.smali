.class Lorg/androidannotations/api/ViewServer$NoopViewServer;
.super Lorg/androidannotations/api/ViewServer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoopViewServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/androidannotations/api/ViewServer;-><init>(Lorg/androidannotations/api/ViewServer$1;)V

    .line 523
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method
