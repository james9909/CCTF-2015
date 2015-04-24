.class public Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/discover/ui/DSnapView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    return-object v0
.end method
