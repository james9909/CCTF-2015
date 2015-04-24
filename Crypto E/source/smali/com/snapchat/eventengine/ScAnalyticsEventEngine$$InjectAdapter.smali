.class public final Lcom/snapchat/eventengine/ScAnalyticsEventEngine$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/eventengine/ScAnalyticsEventEngine;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/eventengine/ScAnalyticsEventEngine;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.snapchat.eventengine.ScAnalyticsEventEngine"

    const-string v1, "members/com.snapchat.eventengine.ScAnalyticsEventEngine"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/eventengine/ScAnalyticsEventEngine;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    invoke-direct {v0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngine;-><init>()V

    .line 28
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngine$$InjectAdapter;->a()Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    move-result-object v0

    return-object v0
.end method
