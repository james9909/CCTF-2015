.class public Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;->a:Ljava/lang/String;

    .line 13
    return-void
.end method
