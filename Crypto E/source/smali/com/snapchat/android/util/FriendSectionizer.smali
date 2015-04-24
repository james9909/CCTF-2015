.class public abstract Lcom/snapchat/android/util/FriendSectionizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/FriendSectionizer$1;,
        Lcom/snapchat/android/util/FriendSectionizer$AddressBookSearchSectionizer;,
        Lcom/snapchat/android/util/FriendSectionizer$AddFriendsSearchSectionizer;,
        Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;,
        Lcom/snapchat/android/util/FriendSectionizer$NoSectionizer;,
        Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method private a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0c0125

    .line 44
    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    invoke-virtual {p1}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->name()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    const v0, 0x7f0c0005

    .line 107
    :goto_1
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_2
    const v0, 0x7f0c0103

    .line 50
    goto :goto_1

    .line 52
    :pswitch_3
    const v0, 0x7f0c019b

    .line 53
    goto :goto_1

    .line 55
    :pswitch_4
    const v0, 0x7f0c0155

    .line 56
    goto :goto_1

    .line 58
    :pswitch_5
    const v0, 0x7f0c0032

    .line 59
    goto :goto_1

    .line 61
    :pswitch_6
    const v0, 0x7f0c002f

    .line 62
    goto :goto_1

    .line 64
    :pswitch_7
    const v0, 0x7f0c0178

    .line 65
    goto :goto_1

    .line 73
    :pswitch_8
    const v0, 0x7f0c019c

    .line 74
    goto :goto_1

    .line 76
    :pswitch_9
    const v0, 0x7f0c019d

    .line 77
    goto :goto_1

    .line 79
    :pswitch_a
    const v0, 0x7f0c0015

    .line 80
    goto :goto_1

    .line 82
    :pswitch_b
    const v0, 0x7f0c0013

    .line 83
    goto :goto_1

    .line 85
    :pswitch_c
    const v0, 0x7f0c001c

    .line 86
    goto :goto_1

    .line 88
    :pswitch_d
    const v0, 0x7f0c0114

    .line 89
    goto :goto_1

    .line 91
    :pswitch_e
    const v0, 0x7f0c0116

    .line 92
    goto :goto_1

    .line 94
    :pswitch_f
    const v0, 0x7f0c0101

    .line 95
    goto :goto_1

    .line 97
    :pswitch_10
    const v0, 0x7f0c0102

    .line 98
    goto :goto_1

    .line 100
    :pswitch_11
    const v0, 0x7f0c0100

    .line 101
    goto :goto_1

    .line 103
    :pswitch_12
    const-string v0, ""

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Lcom/snapchat/android/util/FriendSectionizer$FriendSection;"
        }
    .end annotation
.end method

.method public a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne p1, v0, :cond_1

    .line 33
    check-cast p2, Lcom/snapchat/android/model/Friend;

    .line 34
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 38
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/snapchat/android/util/FriendSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
