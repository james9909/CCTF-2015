.class public Lcom/snapchat/android/ui/caption/CaptionAnalyticData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/caption/CaptionAnalyticData$1;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;ZZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a:Ljava/lang/String;

    .line 35
    :goto_0
    iput-boolean p2, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->b:Z

    .line 36
    iput-boolean p3, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->c:Z

    .line 37
    iput-boolean p4, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->d:Z

    .line 38
    return-void

    .line 23
    :pswitch_0
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a:Ljava/lang/String;

    goto :goto_0

    .line 26
    :pswitch_1
    const-string v0, "BIG_TEXT"

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a:Ljava/lang/String;

    goto :goto_0

    .line 29
    :pswitch_2
    const-string v0, "BIG_TEXT_CENTER"

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a:Ljava/lang/String;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    const-string v0, "caption"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "free_move_mode"

    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v2, "color_mode"

    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "scale_edited"

    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v1

    .line 43
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "false"

    goto :goto_1

    .line 45
    :cond_2
    const-string v0, "false"

    goto :goto_2
.end method
