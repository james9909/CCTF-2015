.class public final Lcom/snapchat/android/util/eventbus/BusProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapEventBus;

    invoke-direct {v0}, Lcom/snapchat/android/util/eventbus/SnapEventBus;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/eventbus/BusProvider;->a:Lcom/squareup/otto/Bus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/util/eventbus/BusProvider;->a:Lcom/squareup/otto/Bus;

    return-object v0
.end method
