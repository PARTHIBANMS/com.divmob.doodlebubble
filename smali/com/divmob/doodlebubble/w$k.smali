.class public final Lcom/divmob/doodlebubble/w$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/divmob/doodlebubble/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# static fields
.field public static final AdsAttrs:[I = null

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final MapAttrs:[I = null

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x6

.field public static final MapAttrs_uiRotateGestures:I = 0x7

.field public static final MapAttrs_uiScrollGestures:I = 0x8

.field public static final MapAttrs_uiTiltGestures:I = 0x9

.field public static final MapAttrs_uiZoomControls:I = 0xa

.field public static final MapAttrs_uiZoomGestures:I = 0xb

.field public static final MapAttrs_useViewLifecycle:I = 0xc

.field public static final MapAttrs_zOrderOnTop:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/divmob/doodlebubble/w$k;->AdsAttrs:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/divmob/doodlebubble/w$k;->MapAttrs:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
