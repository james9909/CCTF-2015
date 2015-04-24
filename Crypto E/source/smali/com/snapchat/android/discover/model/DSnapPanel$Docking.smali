.class public final enum Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Docking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPanel$Docking;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum b:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum c:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field private static final synthetic d:[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->a:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->b:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->c:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->a:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->b:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->c:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->d:[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 69
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->d:[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-object v0
.end method
