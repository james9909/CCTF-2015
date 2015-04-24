.class public Lcom/snapchat/android/cash/CardBlockerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/api2/cash/blockers/CardBlocker;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/blockers/CardBlocker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/cash/CardBlockerManager;->a:Lcom/snapchat/android/api2/cash/blockers/CardBlocker;

    return-object v0
.end method
