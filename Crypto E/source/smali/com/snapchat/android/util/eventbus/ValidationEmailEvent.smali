.class public Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/snapchat/data/gson/identity/ValidateEmailResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/data/gson/identity/ValidateEmailResponse;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;->b:Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    .line 16
    return-void
.end method
