.class public Lcom/snapchat/data/gson/identity/IdentityCheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private emailPendingVerification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email_pending_verification"
    .end annotation
.end field

.field private isEmailVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_email_verified"
    .end annotation
.end field

.field private redGearDurationMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "red_gear_duration_millis"
    .end annotation
.end field

.field private requirePhonePasswordConfirmed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "require_phone_password_confirmed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->isEmailVerified:Ljava/lang/Boolean;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    .line 44
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->redGearDurationMillis:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->isEmailVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->emailPendingVerification:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->redGearDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 160
    if-ne p1, p0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 163
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;

    if-nez v0, :cond_1

    .line 164
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;

    .line 167
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->isEmailVerified:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->isEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->emailPendingVerification:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->emailPendingVerification:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->redGearDurationMillis:Ljava/lang/Long;

    iget-object v2, p1, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->redGearDurationMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->isEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->emailPendingVerification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->redGearDurationMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
