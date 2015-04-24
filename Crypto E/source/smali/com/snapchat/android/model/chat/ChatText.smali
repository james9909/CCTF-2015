.class public Lcom/snapchat/android/model/chat/ChatText;
.super Lcom/snapchat/android/model/chat/Chat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatText$Builder;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field private mHasLinks:Z


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/chat/ChatText$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/chat/Chat$Builder;)V

    .line 24
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a(Lcom/snapchat/android/model/chat/ChatText$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatText;->mUserText:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatText$Builder;->b(Lcom/snapchat/android/model/chat/ChatText$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatText;->mHasLinks:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 17
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getAttributes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/ChatText;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 20
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;

    .line 49
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getAttribute()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->LINK:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getAttribute()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->getAndroidHref()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getAttribute()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->getAndroidHref()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getStart()I

    move-result v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getEnd()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</a>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getStart()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getEnd()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getEnd()I

    move-result v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getStart()I

    move-result v0

    sub-int v0, v5, v0

    sub-int v0, v2, v0

    add-int/2addr v1, v0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatText;->mHasLinks:Z

    :cond_1
    move v0, v1

    move v1, v0

    .line 64
    goto/16 :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getAttribute()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->getHref()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getAttribute()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getStart()I

    move-result v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->getEnd()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</a>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatText;->mUserText:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/Chat;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/Chat;)V

    .line 36
    iget-object v0, p1, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatText;->mUserText:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatText;->mHasLinks:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "text"

    return-object v0
.end method
