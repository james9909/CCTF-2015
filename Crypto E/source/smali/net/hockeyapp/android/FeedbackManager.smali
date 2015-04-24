.class public Lnet/hockeyapp/android/FeedbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lnet/hockeyapp/android/FeedbackManagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->a:Ljava/lang/String;

    .line 49
    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->b:Ljava/lang/String;

    .line 54
    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->c:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
