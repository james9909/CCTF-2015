.class final enum Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SnapTagStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

.field public static final enum b:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

.field public static final enum c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

.field private static final synthetic d:[Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    const-string v1, "NO_BITMAP_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    .line 96
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    const-string v1, "NEW_BITMAP_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->b:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    .line 97
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    const-string v1, "DUPLICATED_BITMAP_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->b:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->d:[Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;
    .locals 1
    .parameter

    .prologue
    .line 94
    const-class v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->d:[Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    return-object v0
.end method
