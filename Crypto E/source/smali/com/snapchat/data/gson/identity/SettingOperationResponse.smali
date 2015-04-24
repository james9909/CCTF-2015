.class public Lcom/snapchat/data/gson/identity/SettingOperationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private logged:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private param:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lcom/snapchat/data/gson/identity/SettingOperationResponse;
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->logged:Ljava/lang/Boolean;

    .line 65
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/data/gson/identity/SettingOperationResponse;
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->message:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->logged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 155
    if-ne p1, p0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    .line 162
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->logged:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->logged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->status:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->message:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->param:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->logged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
