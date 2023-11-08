# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/30 15:54:04 by aawgku-o          #+#    #+#              #
#    Updated: 2023/11/09 03:55:51 by aawgku-o         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DEF_COLOR='\033[0;39m'
BLACK='\033[0;30m'
RED='\033[1;91m'
GREEN='\033[1;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
MAGENTA='\033[0;95m'
CYAN='\033[0;96m'
GRAY='\033[0;90m'
WHITE='\033[0;97m'

NAME 		= libftprintf.a
LIBFTNAME 	= libft.a
CC 			= cc
CFLAGS 		= -Wall -Werror -Wextra -I.
LIBFTDIR 	= ./libft
SRCSDIR		= ./srcs

SRCS 		= ft_printf.c $(addprefix $(SRCSDIR)/, ft_print_c.c ft_print_d.c \
			  ft_print_p.c ft_print_s.c ft_print_u.c ft_print_x.c ft_putchar.c \
			  percent.c)

OBJS 		= $(SRCS:.c=.o)
MAKEFLAGS 	+= --no-print-directory --silent

.SILENT:

all: 		  $(NAME)

makelibft:
			  @make -C $(LIBFTDIR)
			  @cp $(LIBFTDIR)/$(LIBFTNAME) .
			  @mv $(LIBFTNAME) $(NAME)

$(NAME): 	  compiling makelibft $(OBJS)
			  @ar -rcs $(NAME) $(OBJS)
			  @echo ""
			  @echo ${RED}"::::::::::: ::::::::::: ::: ::::::::       :::::::::   ::::::::  ::::    ::: :::::::::: :::"${DEF_COLOR}
			  @echo ${RED}"    :+:         :+:     :+ :+:    :+:      :+:    :+: :+:    :+: :+:+:   :+: :+:        :+:"${DEF_COLOR}
			  @echo ${RED}"    +:+         +:+        +:+             +:+    +:+ +:+    +:+ :+:+:+  +:+ +:+        +:+"${DEF_COLOR}
			  @echo ${RED}"    +#+         +#+        +#++:++#++      +#+    +:+ +#+    +:+ +#+ +:+ +#+ +#++:++#   +#+"${DEF_COLOR}
			  @echo ${RED}"    +#+         +#+               +#+      +#+    +#+ +#+    +#+ +#+  +#+#+# +#+        +#+"${DEF_COLOR}
			  @echo ${RED}"    #+#         #+#        #+#    #+#      #+#    #+# #+#    #+# #+#   #+#+# #+#"${DEF_COLOR}
			  @echo ${RED}"###########     ###         ########       #########   ########  ###    #### ########## ###"${DEF_COLOR}
			  @echo "" 

clean:		  cleans
			  @rm -f $(OBJS)
			  @cd $(LIBFTDIR) && make clean
	
fclean: 	  ffclean
			  @rm -f $(NAME) $(OBJS)
			  @cd $(LIBFTDIR) && make fclean
	
re: 		  fclean all

cleans:
	@echo ""
	@echo ${BLUE}" ::::::::  :::        ::::::::::     :::     ::::    ::: ::::::::::: ::::    :::  ::::::::"${DEF_COLOR}
	@echo ${BLUE}":+:    :+: :+:        :+:          :+: :+:   :+:+:   :+:     :+:     :+:+:   :+: :+:    :+:"${DEF_COLOR}
	@echo ${BLUE}"+:+        +:+        +:+         +:+   +:+  :+:+:+  +:+     +:+     :+:+:+  +:+ +:+"${DEF_COLOR}
	@echo ${CYAN}"+#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+     +#+     +#+ +:+ +#+ :#:"${DEF_COLOR}
	@echo ${CYAN}"+#+        +#+        +#+        +#+     +#+ +#+  +#+#+#     +#+     +#+  +#+#+# +#+   +#+#"${DEF_COLOR}
	@echo ${CYAN}" +#    #+# #+#        #+#        #+#     #+# #+#   #+#+#     #+#     #+#   #+#+# #+#    #+# #+# #+# #+"${DEF_COLOR}
	@echo ${CYAN}" ########  ########## ########## ###     ### ###    #### ########### ###    ####  ########  ### ### ###"${DEF_COLOR}
	@echo ""

ffclean:
	@echo ""
	@echo ${MAGENTA}":::::::::: ::::::::  :::        ::::::::::     :::     ::::    :::         "
	@echo ${MAGENTA}":+:       :+:    :+: :+:        :+:          :+: :+:   :+:+:   :+:         "
	@echo ${MAGENTA}"+:+       +:+        +:+        +:+         +:+   +:+  :+:+:+  +:+         "
	@echo ${MAGENTA}":#::+::#  +#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+         "
	@echo ${GRAY}"+#+       +#+        +#+        +#+        +#+     +#+ +#+  +#+#+#         "
	@echo ${GRAY}"#+#       #+#    #+# #+#        #+#        #+#     #+# #+#   #+#+# #+# #+# "
	@echo ${GRAY}"###        ########  ########## ########## ###     ### ###    #### ### ###  "
	@echo ""

compiling:
	@echo ""
	@echo ${GREEN}" ::::::::   ::::::::  ::::    ::::  ::::::::: ::::::::::: :::        ::::::::::: ::::    :::  ::::::::"${DEF_COLOR}
	@echo ${GREEN}":+:    :+: :+:    :+: +:+:+: :+:+:+ :+:    :+:    :+:     :+:            :+:     :+:+:   :+: :+:    :+:"${DEF_COLOR}
	@echo ${GREEN}"+:+        +:+    +:+ +:+ +:+:+ +:+ +:+    +:+    +:+     +:+            +:+     :+:+:+  +:+ +:+"${DEF_COLOR}
	@echo ${GREEN}"+#+        +#+    +#+ +#+  +:+  +#+ +#++:++#+     +#+     +#+            +#+     +#+ +:+ +#+ :#:"${DEF_COLOR}
	@echo ${YELLOW}"+#+        +#+    +#+ +#+       +#+ +#+           +#+     +#+            +#+     +#+  +#+#+# +#+   +#+#"${DEF_COLOR}
	@echo ${YELLOW}" +#    #+# #+#    #+# #+#       #+# #+#           #+#     #+#            #+#     #+#   #+#+# #+#    #+# #+# #+# #+"${DEF_COLOR}
	@echo ${YELLOW}" ########   ########  ###       ### ###       ########### ########## ########### ###    ####  ########  ### ### ###"${DEF_COLOR}
	@echo ""
	@sleep 2 &&	echo ${MAGENTA}"███▒▒▒▒▒▒▒ 10%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"████▒▒▒▒▒▒ 20%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"█████▒▒▒▒▒ 30%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"██████▒▒▒▒ 50%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"███████▒▒▒ 60%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"████████▒▒ 80%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"█████████▒ 95%"${DEF_COLOR}
				@echo ""
	@sleep 1 &&	echo ${MAGENTA}"██████████ 100%"${DEF_COLOR}
