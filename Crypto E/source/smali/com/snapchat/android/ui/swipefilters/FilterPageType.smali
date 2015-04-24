.class public final enum Lcom/snapchat/android/ui/swipefilters/FilterPageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/swipefilters/FilterPageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

.field public static final enum b:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

.field public static final enum c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

.field public static final enum d:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

.field public static final enum e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

.field private static final synthetic f:[Lcom/snapchat/android/ui/swipefilters/FilterPageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    const-string v1, "UNFILTERED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->a:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 9
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    const-string v1, "GEOFILTER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->b:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    const-string v1, "INFOFILTER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 11
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    const-string v1, "BACKGROUNDFILTER"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->d:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 12
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    const-string v1, "TURN_ON_FILTERS_PAGE"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->a:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->b:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->d:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->f:[Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->f:[Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/swipefilters/FilterPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method
