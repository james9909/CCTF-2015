.class public Lcom/snapchat/android/model/chat/Chat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private recipient:Ljava/lang/String;

.field private sender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/Chat$Builder;->id:Ljava/lang/String;

    .line 469
    iput-object p1, p0, Lcom/snapchat/android/model/chat/Chat$Builder;->sender:Ljava/lang/String;

    .line 470
    iput-object p2, p0, Lcom/snapchat/android/model/chat/Chat$Builder;->recipient:Ljava/lang/String;

    .line 471
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/Chat$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat$Builder;->sender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/model/chat/Chat$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat$Builder;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/chat/Chat$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat$Builder;->id:Ljava/lang/String;

    return-object v0
.end method
