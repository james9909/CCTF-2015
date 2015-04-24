.class public Lcom/snapchat/android/util/debug/TimeLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/debug/TimeLogger$1;,
        Lcom/snapchat/android/util/debug/TimeLogger$Type;
    }
.end annotation


# static fields
.field protected static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Long;

.field private static c:Lcom/snapchat/android/util/system/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    sput-object v1, Lcom/snapchat/android/util/debug/TimeLogger;->b:Ljava/lang/Long;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->a:Ljava/util/HashMap;

    .line 34
    sput-object v1, Lcom/snapchat/android/util/debug/TimeLogger;->c:Lcom/snapchat/android/util/system/Clock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/snapchat/android/util/debug/TimeLogger$Type;Z)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->c:Lcom/snapchat/android/util/system/Clock;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->c:Lcom/snapchat/android/util/system/Clock;

    .line 98
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->c:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v4

    .line 99
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->b:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->b:Ljava/lang/Long;

    .line 101
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 106
    :goto_0
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/debug/TimeLogger$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_1
    :goto_1
    const-wide/16 v0, -0x1

    :cond_2
    :goto_2
    return-wide v0

    .line 103
    :cond_3
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    move-wide v2, v0

    goto :goto_0

    .line 108
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->a:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    if-eqz p2, :cond_1

    .line 110
    const-string v0, "TimeLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BEGIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 117
    if-eqz p2, :cond_2

    .line 118
    const-string v4, "TimeLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 124
    :pswitch_2
    if-eqz p2, :cond_1

    .line 125
    const-string v0, "TimeLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->a:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    invoke-static {p0, v0, p1}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Lcom/snapchat/android/util/debug/TimeLogger$Type;Z)J

    .line 72
    return-void
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/TimeLogger;->b(Ljava/lang/String;Z)J

    move-result-wide v0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/snapchat/android/util/debug/TimeLogger;->b(Ljava/lang/String;Z)J

    move-result-wide v0

    .line 59
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Z)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->b:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    invoke-static {p0, v0, p1}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Lcom/snapchat/android/util/debug/TimeLogger$Type;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->b:Ljava/lang/Long;

    .line 90
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->a:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Lcom/snapchat/android/util/debug/TimeLogger$Type;Z)J

    .line 64
    return-void
.end method

.method public static d(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->b:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Lcom/snapchat/android/util/debug/TimeLogger$Type;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 135
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 136
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->c:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;Lcom/snapchat/android/util/debug/TimeLogger$Type;Z)J

    .line 82
    :cond_0
    return-void
.end method
