.class public Lcom/snapchat/android/util/eventbus/CashRainEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/CashRainEvent;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 13
    iput-wide p4, p0, Lcom/snapchat/android/util/eventbus/CashRainEvent;->a:J

    .line 14
    iput-wide p2, p0, Lcom/snapchat/android/util/eventbus/CashRainEvent;->b:J

    .line 15
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/snapchat/android/util/eventbus/CashRainEvent;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/snapchat/android/util/eventbus/CashRainEvent;->b:J

    return-wide v0
.end method

.method public c()Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/CashRainEvent;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method
