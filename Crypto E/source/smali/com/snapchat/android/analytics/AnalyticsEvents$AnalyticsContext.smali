.class public final enum Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyticsContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum NEW_USER_CONTACT_BOOK_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum REQUESTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum SEARCH:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum SETTINGS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field public static final enum STORIES:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "MY_FRIENDS_POPUP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 85
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "REQUESTS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->REQUESTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 86
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEARCH:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 87
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 88
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 89
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "STORIES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->STORIES:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 91
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "PROFILE_MAIN_PAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 92
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "PROFILE_ADDED_ME_PAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 93
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "PROFILE_ADD_FRIENDS_MENU_PAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 94
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 95
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 96
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "PROFILE_MY_CONTACTS_PAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 98
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "NEW_USER_CONTACT_BOOK_PAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->NEW_USER_CONTACT_BOOK_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 99
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "SETTINGS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SETTINGS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 100
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const-string v1, "CAMERA_PAGE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 83
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->REQUESTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEARCH:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->STORIES:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->NEW_USER_CONTACT_BOOK_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SETTINGS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method
