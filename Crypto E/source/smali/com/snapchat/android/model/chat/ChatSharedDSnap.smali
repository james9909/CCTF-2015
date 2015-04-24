.class public Lcom/snapchat/android/model/chat/ChatSharedDSnap;
.super Lcom/snapchat/android/model/chat/ChatMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;,
        Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "dsnap"


# instance fields
.field private mMediaType:Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;->a(Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 21
    return-void
.end method


# virtual methods
.method public G()Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, ""

    return-object v0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "dsnap"

    return-object v0
.end method
