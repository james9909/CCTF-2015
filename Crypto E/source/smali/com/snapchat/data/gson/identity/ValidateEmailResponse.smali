.class public Lcom/snapchat/data/gson/identity/ValidateEmailResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_message"
    .end annotation
.end field

.field private isValid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_valid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lcom/snapchat/data/gson/identity/ValidateEmailResponse;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->isValid:Ljava/lang/Boolean;

    .line 56
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/data/gson/identity/ValidateEmailResponse;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->errorMessage:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 96
    if-ne p1, p0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 99
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    .line 103
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->isValid:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->isValid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->errorMessage:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->isValid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
