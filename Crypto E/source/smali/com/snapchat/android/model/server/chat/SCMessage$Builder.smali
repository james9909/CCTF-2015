.class public Lcom/snapchat/android/model/server/chat/SCMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/SCMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/SCMessage$Builder;->mType:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/SCMessage$Builder;->mType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/SCMessage$Builder;->mType:Ljava/lang/String;

    return-object v0
.end method
