.class public Lcom/snapchat/android/model/chat/ChatText$Builder;
.super Lcom/snapchat/android/model/chat/Chat$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hasLinks:Z

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/Chat$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatText$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatText$Builder;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/model/chat/ChatText$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatText$Builder;->hasLinks:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatText$Builder;
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatText$Builder;->text:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/model/chat/ChatText$Builder;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatText$Builder;->hasLinks:Z

    .line 83
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/chat/ChatText;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/snapchat/android/model/chat/ChatText;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatText;-><init>(Lcom/snapchat/android/model/chat/ChatText$Builder;)V

    return-object v0
.end method
