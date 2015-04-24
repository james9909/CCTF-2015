.class public Lcom/snapchat/android/util/SqlUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "(CASE WHEN (%s=\'\' OR %s IS NULL) THEN %s ELSE %s END)"

    sput-object v0, Lcom/snapchat/android/util/SqlUtils;->a:Ljava/lang/String;

    .line 18
    const-string v0, "%s=\'\' OR %s IS NULL"

    sput-object v0, Lcom/snapchat/android/util/SqlUtils;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
