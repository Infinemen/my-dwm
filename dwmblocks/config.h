#define PATH(name)                      "/home/men/wm/dwmblocks/blocks/"name

/* DELIMITERENDCHAR must be less than 32.
 * At max, DELIMITERENDCHAR - 1 number of clickable blocks will be allowed.
 * Raw characters larger than DELIMITERENDCHAR and smaller than ' ' in ASCII
   character set can be used for signaling color change in status.
 * The character corresponding to DELIMITERENDCHAR + 1 ('\x0b' when
   DELIMITERENDCHAR is 10) will switch the active colorscheme to the first one
   defined in colors array in dwm's config.h and so on.
 * If you wish to change DELIMITERENDCHAR, don't forget to update its value in
   dwm.c and color codes in your pathu programs. */
#define DELIMITERENDCHAR                12

/* If interval of a block is set to 0, the block will only be updated once at
   startup.
 * If interval is set to a negative value, the block will never be updated in
   the main loop.
 * Set pathc to NULL if clickability is not required for the block.
 * Set signal to 0 if both clickability and signaling are not required for the
   block.
 * Signal must be less than DELIMITERENDCHAR for clickable blocks.
 * If multiple signals are pending, then the lowest numbered one will be
   delivered first. */

/* pathu - path of the program whose output is used as status text of the block
           (output of the program should end in a null or newline character)
 * pathc - path of the program used for handling clicks on the block */

/* 1 interval = INTERVALs seconds, INTERVALn nanoseconds */
#define INTERVALs                       1
#define INTERVALn                       0

static Block blocks[] = {
/*      pathu                           pathc                           interval        signal */
        { PATH("memory_dwm"),           PATH("memory_button"),          10,             9},
        { PATH("cpu_dwm"),              PATH("cpu_button"),             10,             8},
        { PATH("cpubar_dwm"),           PATH("cpubar_button"),          10,             7},
        { PATH("net_dwm"),              PATH("net_button"),             10,             6},
        { PATH("weather_dwm"),          PATH("weather_button"),         3600,           5},
        { PATH("volume_dwm"),           PATH("volume_button"),           0,             4},
        { PATH("calendar_dwm"),         PATH("clock_button"),           60,             3},
        { NULL } /* just to mark the end of the array */
};

/* default delimiter string */
#define DELIMITER                       " | "
