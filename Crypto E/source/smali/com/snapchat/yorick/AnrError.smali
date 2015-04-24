.class public Lcom/snapchat/yorick/AnrError;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/yorick/AnrError$1;,
        Lcom/snapchat/yorick/AnrError$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/snapchat/yorick/AnrError$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/snapchat/yorick/AnrError;-><init>(Ljava/lang/String;)V

    return-void
.end method
